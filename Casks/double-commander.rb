cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0,10668"
  sha256 arm:   "4727e9a4a75cb6b455d010cbd01bf8b82f1a5557a996774a98ababae3c902d34",
         intel: "22196b11a5943ad833d5adc6df34deb3a98ea1d1d80138be34bed2ce5bda2300"

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version.csv.first}-#{version.csv.second}.cocoa.#{arch}.dmg",
      verified: "downloads.sourceforge.net/doublecmd/"
  name "Double Commander"
  desc "File Manager with double panels"
  homepage "https://doublecmd.sourceforge.io/"

  app "Double Commander.app"

  preflight do
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{staged_path}/Double Commander.app"]
  end
end
