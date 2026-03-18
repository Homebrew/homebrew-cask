cask "finetune" do
  version "1.4.0"
  sha256 "387754951253eb80cb515fd630a430cd3d09dfdc3cd96c43bc51dd48e53df70f"

  url "https://github.com/ronitsingh10/FineTune/releases/download/v#{version}/FineTune-#{version}.dmg"
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
