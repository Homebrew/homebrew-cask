cask "keycastr" do
  version "0.10.2"
  sha256 "b7c86d07fd485849c492d300b0cfefc32a2e9750adffd53295f0541d29296b23"

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  name "KeyCastr"
  desc "Open-source keystroke visualiser"
  homepage "https://github.com/keycastr/keycastr"

  livecheck do
    url "https://keycastr.github.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "KeyCastr.app"

  zap trash: [
    "~/Library/HTTPStorages/io.github.keycastr",
    "~/Library/Preferences/io.github.keycastr.plist",
  ]
end
