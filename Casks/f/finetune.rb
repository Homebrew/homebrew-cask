cask "finetune" do
  version "1.0.0"
  sha256 "6b67f13a2414f58e85ef50380dce16ae790a1fe2c47abb30c95fc2942d8e6a51"

  url "https://github.com/ronitsingh10/FineTune/releases/download/v#{version}/FineTune-#{version}.dmg"
  name "FineTune"
  desc "Per-application volume mixer, equalizer, and audio router"
  homepage "https://github.com/ronitsingh10/FineTune"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FineTune.app"

  zap trash: [
    "~/Library/Application Scripts/com.finetuneapp.FineTune",
    "~/Library/Containers/com.finetuneapp.FineTune"
  ]
end