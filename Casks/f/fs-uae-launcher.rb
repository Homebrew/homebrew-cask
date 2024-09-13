cask "fs-uae-launcher" do
  arch arm: "ARM64", intel: "x86-64"

  version "3.1.68"
  sha256 arm:   "d53e40a26c22b86e3e495751144eb5c895da91953a0b84347fc98b31f2f597eb",
         intel: "8aee4b56adb3faf669ffd59384f06bae2628667f51aed51e839f90189c874a54"

  url "https://fs-uae.net/files/FS-UAE-Launcher/Stable/#{version}/FS-UAE-Launcher_#{version}_macOS_#{arch}.tar.xz"
  name "FS-UAE Launcher"
  desc "Amiga emulator launcher"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/builds/stable"
    regex(/href=.*?FS[._-]UAE[._-]Launcher[._-](\d+(?:\.\d+)+)[._-]macOS[._-]/i)
  end

  app "FS-UAE-Launcher/macOS/#{arch}/FS-UAE Launcher.app"

  zap trash: [
    "~/Library/Preferences/fs-uae-launcher",
    "~/Library/Saved Application State/no.fengestad.fs-uae-launcher.savedState",
  ]
end
