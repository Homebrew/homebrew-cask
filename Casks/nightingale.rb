cask "nightingale" do
  version "1.12.1,2454"
  sha256 "f1a07e5bb6e069ac2f9fdc89c7708d3badb3b41e27199920a6d55b462764c454"

  url "https://github.com/nightingale-media-player/nightingale-hacking/releases/download/nightingale-#{version.csv.first}/Nightingale_#{version.csv.first}-#{version.csv.second}_macosx-i686.dmg",
      verified: "github.com/nightingale-media-player/nightingale-hacking/"
  name "Nightingale"
  desc "Working tree for the community fork of Songbird"
  homepage "https://getnightingale.com/"

  livecheck do
    url "https://github.com/nightingale-media-player/nightingale-hacking/releases/latest"
    regex(%r{href=.*?/Nightingale_(\d+(?:\.\d+)*)-(\d+)_macosx-i686\.dmg}i)
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

  app "Nightingale.app"
end
