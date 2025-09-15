cask "aqua-app" do
  arch arm: "-aarch64"

  version "2024.3.2,243.23654.154"
  sha256 arm:   "43974cdbbb71aaf5bfcfaf2cfd0e69e9920dda3973e64671936c1d52b267494d",
         intel: "423d492e9849beb7edbbd1771650a04e8df9f469bf1789b41bc5878c84cee393"

  url "https://download.jetbrains.com/aqua/aqua-#{version.csv.first}#{arch}.dmg"
  name "Aqua"
  desc "Tests writing environment"
  homepage "https://www.jetbrains.com/aqua/"

  # https://blog.jetbrains.com/qa/2025/04/aqua-sunset/
  deprecate! date: "2025-08-16", because: :discontinued

  auto_updates true

  app "Aqua.app"
  binary "#{appdir}/Aqua.app/Contents/MacOS/aqua"

  zap trash: [
    "~/Library/Application Support/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Caches/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Logs/JetBrains/Aqua#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.aqua-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.aqua-EAP.SavedState",
  ]
end
