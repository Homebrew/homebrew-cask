cask "jami" do
  version "2.42,2026082009"
  sha256 "8e9e1990ce3af57629a619991c91f08c0518273facbed5b3fcdd736ef11fa6e6"

  url "https://dl.jami.net/mac_osx/jami#{version.csv.second}.dmg"
  name "Jami"
  name "Savoir-faire Linux Ring"
  desc "Decentralised instant messenger and softphone"
  homepage "https://jami.net/"

  livecheck do
    url "https://dl.jami.net/mac_osx/sparkle-ring.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Jami.app"

  zap trash: "~/Library/Application Support/jami"
end
