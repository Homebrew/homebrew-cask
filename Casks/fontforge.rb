cask "fontforge" do
  version "2022-03-08,74e2eca"
  sha256 "79f770c692287520fdd6001ec97af7d67b79eed985bf1e44bb97ab57fcedc517"

  url "https://github.com/fontforge/fontforge/releases/download/#{version.csv.first.no_hyphens}/FontForge-#{version.csv.first}-#{version.csv.second}.app.dmg",
      verified: "github.com/fontforge/fontforge/"
  name "FontForge"
  desc "Font editor and converter for outline and bitmap fonts"
  homepage "https://fontforge.github.io/en-US/"

  livecheck do
    url "https://github.com/fontforge/fontforge/releases/latest"
    regex(%r{href=.*?/FontForge-(\d+(?:-\d+)*)-([0-9a-f]+)\.app\.dmg}i)
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

  depends_on macos: ">= :catalina"

  app "FontForge.app"

  zap trash: "~/.cache/fontforge"
end
