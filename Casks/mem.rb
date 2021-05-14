cask "mem" do
  version "0.16.0"
  sha256 "6a7ff4ee59a3ed7006b5f3495cfcdf4a9645d503f9f888397f0f5cf4b82b3d77"

  url "https://storage.googleapis.com/mem-desktop/Mem-#{version}.dmg",
      verified: "storage.googleapis.com/mem-desktop/"
  name "Mem"
  desc "Capture and access information from anywhere"
  homepage "https://get.mem.ai/"

  livecheck do
    url "https://storage.googleapis.com/mem-desktop/latest-mac.yml"
    strategy :page_match
    regex(/Mem-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Mem.app"

  zap trash: [
    "~/Library/Application Support/mem",
    "~/Library/Preferences/org.memlabs.Mem.plist",
    "~/Library/Saved Application State/org.memlabs.Mem.savedState",
  ]
end
