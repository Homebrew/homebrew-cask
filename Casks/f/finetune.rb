cask "finetune" do
  version "1.6.0"
  sha256 "bd3e40de605a08e94da537f1fff721e0aa865998b184c18ef81a1652dd1fa0d6"

  url "https://github.com/ronitsingh10/FineTune/releases/download/v#{version}/FineTune.dmg"
  name "FineTune"
  desc "Per-application volume mixer, equalizer, and audio router"
  homepage "https://github.com/ronitsingh10/FineTune"

  livecheck do
    url "https://raw.githubusercontent.com/ronitsingh10/FineTune/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "FineTune.app"

  zap trash: [
    "~/Library/Application Scripts/com.finetuneapp.FineTune",
    "~/Library/Containers/com.finetuneapp.FineTune",
  ]
end
