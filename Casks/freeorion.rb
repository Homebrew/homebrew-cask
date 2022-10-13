cask "freeorion" do
  version "0.4.10.2,2021-08-01,f663dad"
  sha256 "d86d019ba80662f868a2d79bad378957234b79d50feaf351b2181da1d5e52c26"

  url "https://github.com/freeorion/freeorion/releases/download/v#{version.csv.first}/FreeOrion_v#{version.csv.first}_#{version.csv.second}.#{version.csv.third}_MacOSX_10.9.dmg",
      verified: "github.com/freeorion/"
  name "FreeOrion"
  desc "Turn-based space empire and galactic conquest game"
  homepage "https://freeorion.org/"

  livecheck do
    url "https://github.com/freeorion/freeorion/releases/latest"
    regex(%r{href=.*?/FreeOrion_v?(\d+(?:\.\d+)*)_(\d+(?:-\d+)*)\.([0-9a-f]+)_MacOSX_(?:\d+(?:\.\d+)*)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  app "FreeOrion.app"
end
