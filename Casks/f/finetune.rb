cask "finetune" do
  version "1.7.0"
  sha256 "caa8640fe88ecd2d05cf3b0b80996dd9cb4aa42faef363fac4497eb0dfd12ca7"

  url "https://github.com/ronitsingh10/FineTune/releases/download/v#{version}/FineTune.dmg"
  name "FineTune"
  desc "Per-application volume mixer, equalizer, and audio router"
  homepage "https://github.com/ronitsingh10/FineTune"

  livecheck do
    url "https://raw.githubusercontent.com/ronitsingh10/FineTune/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "FineTune.app"

  zap trash: [
    "~/Library/Application Scripts/com.finetuneapp.FineTune",
    "~/Library/Containers/com.finetuneapp.FineTune",
  ]
end
