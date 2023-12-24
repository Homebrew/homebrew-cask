cask "td-agent" do
  version "4.4.1"
  sha256 "518d9089f8f163a6da51fe55622535776fc5dd5b45bdb277745cf8a14f600ff7"

  url "https://s3.amazonaws.com/packages.treasuredata.com/#{version.major}/macosx/td-agent-#{version}.dmg",
      verified: "s3.amazonaws.com/packages.treasuredata.com/"
  name "td-agent"
  desc "Fluentd distribution package"
  homepage "https://www.fluentd.org/"

  livecheck do
    url "https://td-agent-package-browser.herokuapp.com/#{version.major}/macosx"
    regex(/href=.*?td-agent[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "td-agent-#{version}.pkg"

  uninstall launchctl: "td-agent",
            pkgutil:   [
              "com.treasuredata.tdagent",
              "test.treasuredatainc.pkg.td-agent",
            ]
end
