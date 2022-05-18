cask "ilspy" do
  version "7.2-rc"
  sha256 "480f0fe2b5dc6ad4d0df3d4c9ecd44429b97e0c8b5bac8bc99c2ac2a8e3025ff"

  url "https://github.com/icsharpcode/AvaloniaILSpy/releases/download/v#{version}/macOS.x64.Release.zip"
  name "ILSpy"
  desc "Avalonia-based .NET decompiler"
  homepage "https://github.com/icsharpcode/AvaloniaILSpy"

  # This cask uses an unstable version and this `livecheck` block is only used
  # to prevent livecheck from skipping pre-release versions by default. This
  # should be removed/updated if the cask is updated to a stable version.
  livecheck do
    url :url
  end

  app "artifacts/osx-x64/ILSpy.app"

  zap trash: [
    "~/Library/Preferences/ilspy.plist",
    "~/Library/Saved Application State/ilspy.savedState",
  ]
end
