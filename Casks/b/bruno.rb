cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"
  sha256 arm:   "2aae1998417d558a8e499eda226987c496780ed23ce762759b5a7ed424c09280",
         intel: "fc0f2184f172998147b96cf9ee56affcfc31e8c3f13242a6be6f3d678b787581"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
