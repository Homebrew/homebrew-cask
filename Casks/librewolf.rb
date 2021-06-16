cask "librewolf" do
  version "89.0-1"

  if Hardware::CPU.intel?
    sha256 "770fb7c8e341a967c77c69baae44ea35c489b4ebaf5059a2f63a377130f9958e"
    url "https://gitlab.com/librewolf-community/browser/macos/uploads/b9599a19f0da293bb37d28d8e56b48bc/librewolf-#{version}.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos"
  else
    sha256 "99f32a2a6de6caaf5615911fdc3003961ad496c22b9447c8cbf299467561c0c5"
    url "https://gitlab.com//librewolf-community/browser/macos/uploads/fb11511efb853b544f8a8ebd1963b675/librewolf-#{version}_aarch64_exp.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos"
  end

  name "LibreWolf"
  desc "Fork of Firefox, focused on privacy, security and freedom"
  homepage "https://librewolf-community.gitlab.io/"

  app "LibreWolf.app"

  zap trash: [
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
    "~/.librewolf",
  ]
end
