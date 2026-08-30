cask "cursr" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "-mac-#{arch}.dmg", linux: ".AppImage"

  version "1.7.3"

  on_macos do
    sha256 arm:   "e60db5a98cadbbdd4d5e1d44c9d335028f9e013f00c473544e04b1153f43f823",
           intel: "828c06f4acc31b72651f25623c92c9130a3ea9c02a5b80531c39e099bb721abb"

    app "Cursr.app"

    zap trash: [
      "~/Library/Application Support/cursr",
      "~/Library/Preferences/com.bitgapp.cursr.plist",
    ]
  end
  on_linux do
    sha256 "0828ef809901204729c23b332ef104bfc0b13d6a920ea9a7f81841cf11f7e09f"

    depends_on arch: :x86_64

    app_image "Cursr.AppImage"
  end

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr#{url_end}"
  name "Cursr"
  desc "Customise mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
