cask "localsend" do
  os macos: ".dmg", linux: "-linux-x86-64.AppImage"

  version "1.18.2"

  on_macos do
    sha256 "126860d56f6f49b11845f601aac51de27a49b16d2b48102415da91e0e37e5155"

    depends_on macos: :big_sur

    app "LocalSend.app"

    zap trash: [
      "~/Library/Application Scripts/org.localsend.localsendApp",
      "~/Library/Containers/org.localsend.localsendApp",
      "~/Library/Preferences/org.localsend.localsendApp.plist",
      "~/Library/Saved Application State/org.localsend.localsendApp.savedState",
    ]
  end
  on_linux do
    sha256 "19f21613d1834f6caa69517113670461a3f10b80a2a315f86548c0663d9c0aaf"

    depends_on arch: :x86_64

    app_image "LocalSend-#{version}-linux-x86-64.AppImage", target: "LocalSend.AppImage"
  end

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}#{os}"
  name "LocalSend"
  desc "Open-source cross-platform alternative to AirDrop"
  homepage "https://localsend.org/"
end
