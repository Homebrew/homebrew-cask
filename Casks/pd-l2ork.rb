cask "pd-l2ork" do
  version "2.17.0,20210417,ca592f6f"
  sha256 "c890f169663d9cdf947baaa2ce9cf0d48fcd07cb71368b7eab29547b237dab39"

  url "https://github.com/agraef/purr-data/releases/download/#{version.csv.first}/Pd-l2ork-OSX10.11-#{version.csv.first}-#{version.csv.second}-rev.#{version.csv.third}-x86_64.dmg",
      verified: "github.com/agraef/purr-data/"
  name "Pd-l2ork"
  name "Purr Data"
  desc "Programming environment for computer music and multimedia applications"
  homepage "https://agraef.github.io/purr-data/"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)/Pd-l2ork-OSX10\.11-\1-(\d+)-rev\.(\h+)-x86_64\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  app "Pd-l2ork.app"
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", "0777"
  end
end
