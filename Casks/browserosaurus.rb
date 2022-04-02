cask "browserosaurus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.4.0"

  if Hardware::CPU.intel?
    sha256 "509984f2cafa148b03e2fc0b03d38cd9db1fca2fb8c2f0cef693462652001213"
  else
    sha256 "6082b5a5f009d1b2a98a82f317025ecc134afc3535e92a2aa639b7a14d67c55e"
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
