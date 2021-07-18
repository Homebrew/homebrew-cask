cask "ilspy" do
  version "7.0-rc2"
  sha256 "ee2b7838d11be19063b5fbe625e91677d36c716d4c5e3d6a5f3bb78783260ebb"

  url "https://github.com/icsharpcode/AvaloniaILSpy/releases/download/v#{version}/osx-x64.zip"
  name "ILSpy"
  desc "Avalonia-based .NET decompiler"
  homepage "https://github.com/icsharpcode/AvaloniaILSpy"

  livecheck do
    url :url
  end

  app "artifacts/osx-x64/ILSpy.app"

  zap trash: [
    "~/Library/Preferences/ilspy.plist",
    "~/Library/Saved Application State/ilspy.savedState",
  ]
end
