cask "appcode" do
  arch arm: "-aarch64"

  version "2022.3.2,223.8617.49"
  sha256 arm:   "c38bf4e2558d2a41ab856390f713f01a44fade55d21b107cfaef0c8bf6606f86",
         intel: "b78910b83ccbd6e19b7912fdfb675912e2b003fd1e4c800d656258504994ede1"

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.first}#{arch}.dmg"
  name "AppCode"
  desc "IDE for Swift, Objective-C, C, and C++ development"
  homepage "https://www.jetbrains.com/objc/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "AppCode.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "appcode") }.each do |path|
      if File.readable?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/AppCode#{version.major_minor}",
    "~/Library/Caches/AppCode#{version.major_minor}",
    "~/Library/Logs/AppCode#{version.major_minor}",
    "~/Library/Preferences/AppCode#{version.major_minor}",
  ]
end
