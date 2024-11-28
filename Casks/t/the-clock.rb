cask "the-clock" do
  version "4.9.6"
  sha256 :no_check

  url "https://seense.com/the_clock/updateapp/the_clock.zip"
  name "The Clock"
  desc "Clock and time zone app"
  homepage "https://seense.com/the_clock/"

  livecheck do
    url "https://www.seense.com/the_clock/updateapp/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "The Clock.app"

  uninstall quit: "com.fabriceleyne.theclock"

  zap trash: [
    "~/Library/Application Scripts/3EYN7PPTPF.com.fabriceleyne.theclock",
    "~/Library/Application Scripts/com.fabriceleyne.theclock*",
    "~/Library/Containers/com.fabriceleyne.theclock*",
    "~/Library/Group Containers/3EYN7PPTPF.com.fabriceleyne.theclock",
  ]
end
