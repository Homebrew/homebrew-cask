cask "front" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.36.14"

  if Hardware::CPU.intel?
    sha256 "5a522a2a6ff8df26f672101e12c412bb7dc4551801a450f502842cbeafb50df6"
  else
    sha256 "2d194488f26c0d38b255228f69f287d8bf676e651c0e74f4a97ae99accef94d4"
  end

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
