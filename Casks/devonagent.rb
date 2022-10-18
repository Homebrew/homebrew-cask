cask "devonagent" do
  version "3.11.6"
  sha256 "ae57b6329c8678af440991ae3d329092ad196322d909ab0a0893726113b5748a"

  url "https://download.devontechnologies.com/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  name "DEVONagent Pro"
  desc "Tool to help searching the web more efficiently"
  homepage "https://www.devontechnologies.com/apps/devonagent"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "DEVONagent.app"
end
