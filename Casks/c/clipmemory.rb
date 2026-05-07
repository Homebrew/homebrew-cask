cask "clipmemory" do
  version "1.2.13"
  sha256 "9f9919e12592c215813bd49b576213f0ceaed9c1120cf3ff71d4cde4e7137923"

  url "https://github.com/irykelee/clipmemory/releases/download/v#{version}/ClipMemory.tar.gz"
  name "ClipMemory"
  desc "Clipboard history manager with AES-256 encryption and sensitive data detection"
  homepage "https://github.com/irykelee/clipmemory"

  depends_on macos: ">= :ventura"

  app "ClipMemory.app"

  zap trash: [
    "~/Library/Application Support/ClipMemory",
    "~/Library/Preferences/com.clipmemory.app.plist",
  ]
end
