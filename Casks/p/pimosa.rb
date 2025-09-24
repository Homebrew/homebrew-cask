cask "pimosa" do
  version "1.3.3"
  sha256  :no_check

  url "https://pub-e98ac9d8ff7347b29207e39fd6b3cb89.r2.dev/Pimosa.zip",
      verified: "pub-e98ac9d8ff7347b29207e39fd6b3cb89.r2.dev/"
  name "Pimosa"
  desc "Photo, video, music and pdf editing tools"
  homepage "https://pimosa.app/"

  livecheck do
    url "https://raw.githubusercontent.com/Ansh-Rathod/pimosa-builds/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  # Binary is universal but only functional on Apple Silicon
  depends_on arch: :arm64

  app "Pimosa.app"

  zap trash: [
    "~/Library/Application Support/com.beta.pimosa",
    "~/Library/HTTPStorages/com.beta.pimosa",
    "~/Library/Preferences/com.beta.pimosa.plist",
  ]
end
