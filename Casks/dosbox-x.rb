cask "dosbox-x" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2022.12.26,20221226183221"
    sha256 "ee642043238021e0fdc0874970f431eb218ce02bc0cbf722ddb6f589dd7d2b99"
  end
  on_intel do
    version "2022.12.26,20221226190321"
    sha256 "af254d87679beefaf2f30d1f7b3bc1a1f59473e76da9d620c452f0aa1f8db53b"
  end

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url "https://github.com/joncampbell123/dosbox-x/releases/latest"
    regex(%r{href=".*?/dosbox-x-v?(\d+(?:\.\d+)+)/dosbox-x-macosx-#{arch}-([^/]+)\.zip"}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
