cask "stellarium" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.22.2"

  if Hardware::CPU.intel?
    sha256 "5e8c2ee315f8c00a393e7bd22461f9b48355538cec39e1bb771e92a5795bcfb4"
  else
    sha256 "74acc44f96597d11d92f94015efd19cd18c2ce76e850d90f44c40d636f72ea5f"
  end

  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}-#{arch}.zip",
      verified: "github.com/Stellarium/stellarium/"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
