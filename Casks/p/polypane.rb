cask "polypane" do
  arch arm: "-arm64"
  file_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "31.0.0"
  sha256 arm:          "8809ea07fb71d966f5066ea3b42e60b594659cf9a74923fa824de2597e63180f",
         intel:        "9e4fbb353d042fe7cb650a1f28bed82d00b4b8e19f60c533f241553b571b93ee",
         arm64_linux:  "2318cc9ce186acd0f03ddb64884711f818b90f8a5f476936ce7b6a6845a15428",
         x86_64_linux: "7d629ce9da00c9c02e035dfcce4395bfc1470d792c875a2f747b43a95cc6933d"

  on_macos do
    depends_on macos: :ventura

    app "Polypane.app"

    zap trash: [
      "~/Library/Application Support/Polypane",
      "~/Library/Caches/com.firstversionist.polypane",
      "~/Library/Caches/com.firstversionist.polypane.ShipIt",
      "~/Library/Logs/Polypane",
      "~/Library/Preferences/com.firstversionist.polypane.plist",
      "~/Library/Saved Application State/com.firstversionist.polypane.savedState",
    ]
  end
  on_linux do
    app_image "Polypane-#{version}#{arch}.AppImage", target: "Polypane.AppImage"

    zap trash: "~/.config/Polypane"
  end

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.#{file_ext}"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"
end
