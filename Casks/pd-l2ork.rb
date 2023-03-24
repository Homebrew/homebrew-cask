cask "pd-l2ork" do
  version "2.18.1,20230117,e1770339"
  sha256 "f20eb92635c25f118fed5a2f47b8fe1a4529e5b8ce798c7382a8bdb0ab2c46c1"

  url "https://github.com/agraef/purr-data/releases/download/#{version.csv.first}/Pd-l2ork-#{version.csv.first}-#{version.csv.second}-rev.#{version.csv.third}-x86_64.dmg",
      verified: "github.com/agraef/purr-data/"
  name "Pd-l2ork"
  name "Purr Data"
  desc "Programming environment for computer music and multimedia applications"
  homepage "https://agraef.github.io/purr-data/"

  livecheck do
    url "https://github.com/agraef/purr-data/releases/latest"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/Pd-l2ork-\1-(\d+)-rev\.(\h+)-x86_64\.dmg}i)
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

  app "Pd-l2ork.app"
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", "0777"
  end
end
