cask "get-iplayer-automator" do
  version "1.25.1,20230118001"
  sha256 "951dffaab21dd7afb9d0a5650971dfdb72b53fecb74bf7035bd5dda4fd33e35c"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.csv.first}/Get.iPlayer.Automator.v#{version.csv.first}.b#{version.csv.second}.zip"
  name "Get iPlayer Automator"
  desc "Download and watch BBC and ITV shows"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  livecheck do
    url "https://github.com/Ascoware/get-iplayer-automator/releases/latest"
    regex(%r{href=.*?/Get\.?iPlayer\.?Automator\.?v?(\d+(?:.\d+)*).b(\d+)\.zip}i)
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

  app "Get iPlayer Automator.app"
end
