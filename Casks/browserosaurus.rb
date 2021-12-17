cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.1.0"

  if Hardware::CPU.intel?
    sha256 "29be3d6416a84a2bf8f78bcc4e26520853ba20ae23317e22abb4520c3e0ade9d"
  else
    sha256 "be159286401ea841e4ca8d51a46ac8a6b15e8cb400b679c324edbf2eefac58e9"
  end

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true

  app "Browserosaurus.app"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
