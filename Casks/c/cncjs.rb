cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.3"
  sha256 arm:   "68f07fdcdb4e87107a18123e41560ddd36687fbde14e6c11c8e4404fea24c7a0",
         intel: "29a0471b9096618743ca71465c7b3a8844b9531c3077a2f25e96015fab15c1e2"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos-#{arch}.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "CNCjs.app"
end
