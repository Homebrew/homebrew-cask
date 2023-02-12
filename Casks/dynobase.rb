cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "2.2.3,230122bksrk6omy,2.2.4"
  sha256 arm:   "7b96176b19b76662e3469ddec3d1cdd96b8c72df1b5f2e39daaff7a5b8c4ff52",
         intel: "132d862a01aee32f0b3a1f08318e5bb91556753e021b60aa2b4315acbb267e1b"

  url "https://github.com/Dynobase/dynobase/releases/download/v#{version.csv.third}/Dynobase.#{version.csv.first}.-.Build.#{version.csv.second}-#{arch}.dmg",
      verified: "github.com/Dynobase/dynobase/"
  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  livecheck do
    url "https://github.com/Dynobase/dynobase/releases/latest"
    regex(%r{(\d+(?:\.\d+)+)/Dynobase[._-](\d+(?:\.\d+)+)[._-]+Build[._-](\S+)[._-]#{arch}\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
    end
  end

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
