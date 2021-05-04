cask "ilspy" do
  version "7.0-rc1"
  sha256 "27c1b43359a80933b8eae0b90fdc03e0d9a0c911e087f678d37fb8448f1d7433"

  url "https://github.com/icsharpcode/AvaloniaILSpy/releases/download/v#{version}/osx-x64.zip"
  name "ILSpy"
  desc "Avalonia-based .NET decompiler"
  homepage "https://github.com/icsharpcode/AvaloniaILSpy"

  livecheck do
    url :url
  end

  app "ILSpy.app"

  zap trash: [
    "~/Library/Preferences/ilspy.plist",
    "~/Library/Saved Application State/ilspy.savedState",
  ]
end
