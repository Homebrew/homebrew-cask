cask "feishin" do
  arch arm: "aarch64", intel: "x86-64"
  arch_file_suffix = on_arch_conditional arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "1767913ddfac59b217b9f040489b56a3e9e7118037d19b7539a999721e74f027",
         intel: "211dbc7aa30e5915bd0fcce5a2229f1b16fc2b1b41a7989d632f463f2468529d"

  url "https://github.com/jeffvli/feishin/releases/download/v#{version}/Feishin-#{version}-mac-#{arch_file_suffix}.zip"
  name "Feishin"
  desc "Modern self-hosted music player"
  homepage "https://github.com/jeffvli/feishin"

  depends_on macos: ">= :catalina"

  app "Feishin.app"

  zap trash: [
    "~/Library/Application Support/feishin",
    "~/Library/Preferences/org.jeffvli.feishin.plist",
  ]
end
