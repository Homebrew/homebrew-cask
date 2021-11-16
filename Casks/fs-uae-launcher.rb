cask "fs-uae-launcher" do
  arch = Hardware::CPU.intel? ? "x86-64" : "ARM64"

  version "3.1.43"

  if Hardware::CPU.intel?
    sha256 "c810dc3cfaa022baaa2672203c230bcb76ca279995bf8bcb0a133a9a7bff3bd2"
  else
    sha256 "aa7941947c40180a7150fb1487af318bcf4a855086cccc972f862b7c8c06803e"
  end

  url "https://fs-uae.net/files/FS-UAE-Launcher/Stable/#{version}/FS-UAE-Launcher_#{version}_macOS_#{arch}.tar.xz"
  name "FS-UAE Launcher"
  desc "Amiga emulator launcher"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/builds/stable"
    strategy :page_match
    regex(/href=.*?FS[._-]UAE[._-]Launcher[._-](\d+(?:\.\d+)+)[._-]macOS[._-]/i)
  end

  app "FS-UAE-Launcher/macOS/#{arch}/FS-UAE Launcher.app"
end
