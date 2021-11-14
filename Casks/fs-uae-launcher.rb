cask "fs-uae-launcher" do
  arch = Hardware::CPU.intel? ? "x86-64" : "ARM64"

  version "3.1.42"

  if Hardware::CPU.intel?
    sha256 "c84db7c5bf04b183f86fcce6828d6e85968ddc3c350aef0a0abbfe68f506756e"
  else
    sha256 "a06656df30572e76623b7cad29b93eece0c7938029889574c36b65315a508ad1"
  end

  url "https://fs-uae.net/files/FS-UAE-Launcher/Stable/#{version}/FS-UAE-Launcher_#{version}_macOS_#{arch}.tar.xz"
  name "FS-UAE Launcher"
  desc "Amiga emulator launcher"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/builds/stable"
    strategy :page_match
    regex(/href=.*?FS[._-]UAE[._-]Launcher[._-](\d+(?:\.\d+)*)[._-]macOS[._-]/i)
  end

  depends_on cask: "fs-uae"

  app "FS-UAE-Launcher/macOS/#{arch}/FS-UAE Launcher.app"
end
