cask "td-agent" do
  arch arm: "arm64", intel: "x86_64"

  version "4.5.2"
  sha256 arm:   "d256618c6bff60c9217ac5e74cb96f2b95c84f05fd31081548441ffec3826036",
         intel: "f8acfbdc5d941198b7e275093127d08bb687b334a2f0f1e20b7484cc6af53398"

  url "https://s3.amazonaws.com/packages.treasuredata.com/#{version.major}/macosx/td-agent-#{version}-#{arch}.dmg",
      verified: "s3.amazonaws.com/packages.treasuredata.com/"
  name "td-agent"
  desc "Fluentd distribution package"
  homepage "https://www.fluentd.org/"

  deprecate! date: "2025-03-01", because: :discontinued

  pkg "td-agent-#{version}.pkg"

  uninstall launchctl: "td-agent",
            pkgutil:   [
              "com.treasuredata.tdagent",
              "test.treasuredatainc.pkg.td-agent",
            ]
end
