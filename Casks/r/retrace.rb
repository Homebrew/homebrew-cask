cask "retrace" do
  version "0.1"
  sha256 "7c49152504694fb1e29803fd6adafa423f3129a6ee9b9b817dfec2a9b2e98d50"

  url "https://cdn.retrace.to/Retrace-v#{version}.dmg"
  name "Retrace"
  desc "Local-first screen recording and search application"
  homepage "https://retrace.to/"

  livecheck do
    url "https://cdn.retrace.to/index.html"
    regex(/Retrace[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Retrace.app"

  zap trash: [
    "~/Library/Application Support/Retrace",
    "~/Library/Caches/io.retrace.app",
    "~/Library/HTTPStorages/io.retrace.app",
    "~/Library/Preferences/io.retrace.app.plist",
    "~/Library/Saved Application State/io.retrace.app.savedState",
  ]
end
