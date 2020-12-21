cask "abyssoft-teleport" do
  version "1.3.0"
  sha256 "9f521405191124b1ae27c9016a17d73a1f683082d57641691ca551101b156731"

  url "https://github.com/abyssoft/teleport/releases/download/v#{version}/teleport-v#{version}.zip"
  appcast "https://github.com/abyssoft/teleport/releases.atom"
  name "teleport"
  desc "Virtual KVM"
  homepage "https://github.com/abyssoft/teleport"

  app "teleport.app"

  zap trash: [
    "~/Library/Caches/com.abyssoft.teleport",
    "~/Library/Preferences/com.abyssoft.teleport.plist",
  ]
end
