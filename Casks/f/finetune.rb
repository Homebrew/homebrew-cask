cask "finetune" do
  version "1.1.0"
  sha256 "a8da29efbedcab85bd8f451fbae2da2b1224c23ccac80e123f667313dc9a5757"

  url "https://github.com/ronitsingh10/FineTune/releases/download/v#{version}/FineTune-#{version}.dmg"
  name "FineTune"
  desc "Per-application volume mixer, equalizer, and audio router"
  homepage "https://github.com/ronitsingh10/FineTune"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "FineTune.app"

  zap trash: [
    "~/Library/Application Scripts/com.finetuneapp.FineTune",
    "~/Library/Containers/com.finetuneapp.FineTune",
  ]
end
