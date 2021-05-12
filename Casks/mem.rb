cask "mem" do
  version "0.16.0"
  sha256 "6a7ff4ee59a3ed7006b5f3495cfcdf4a9645d503f9f888397f0f5cf4b82b3d77"

  url "https://storage.googleapis.com/mem-desktop/Mem-#{version}.dmg",
      verified: "storage.googleapis.com/mem-desktop/"
  name "Mem"
  desc "Capture and access information from anywhere"
  homepage "https://get.mem.ai/"

  app "Mem.app"
end
