cask "dosbox-x" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "2022.08.0,20220801110113"
    sha256 "ac684024318271c551f5cffbc18cb44ef9e5470a35f64b726e7ed890b0d03e7a"
  end
  on_arm do
    version "2022.08.0,20220801125416"
    sha256 "4a0f664c8b6c35db153682c7bad747faf4d033da10039e5eb247e0f526e1aaeb"
  end

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-windows-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url "https://github.com/joncampbell123/dosbox-x/releases/latest"
    regex(%r{href=".*?/dosbox-x-windows-v?(\d+(?:\.\d+)+)/dosbox-x-macosx-#{arch}-([^/]+)\.zip"}i)
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
