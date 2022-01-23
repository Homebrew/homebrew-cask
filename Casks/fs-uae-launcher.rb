cask "fs-uae-launcher" do
  arch = Hardware::CPU.intel? ? "x86-64" : "ARM64"

  version "3.1.66"

  if Hardware::CPU.intel?
    sha256 "89dc35917fceeebee62d7bfaa80c3384b6daf0600908d46ba3508855195effb2"
  else
    sha256 "03c720ee5f3293c6e4002dd593af9518b05873f869da73bfb8480128a8b586d2"
  end

  url "https://fs-uae.net/files/FS-UAE-Launcher/Stable/#{version}/FS-UAE-Launcher_#{version}_macOS_#{arch}.tar.xz"
  name "FS-UAE Launcher"
  desc "Amiga emulator launcher"
  homepage "https://fs-uae.net/"

  livecheck do
    cask "fs-uae"
  end

  app "FS-UAE-Launcher/macOS/#{arch}/FS-UAE Launcher.app"
end
