cask "mercury-browser" do
  version "129.0.2"  # replace with the version number (e.g., "1.2.3")
  sha256 "abc123..."  # replace with the actual SHA256 checksum of the dmg file

  url "https://github.com/Alex313031/Mercury/releases/download/v#{version}/mercury-#{version}_mac_ARM64.dmg"
  name "Mercury"
  desc "Firefox fork with compiler optimizations and patches from Librewolf, Waterfox, Ghostery, and BetterFox."
  homepage "https://github.com/Alex313031/Mercury"

  app "Mercury.app"

  # If you have any post-installation steps (e.g., cleaning up), add them here:
  # postflight do
  #   # Example: move mercury to /Applications
  #   system_command "/bin/mv", args: ["#{staged_path}/Mercury.app", "/Applications"]
  # end
end
