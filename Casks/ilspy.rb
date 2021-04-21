cask "ilspy" do
  version "v5.0-rc2"
  sha256 "219a657bb617603b35386500d2dc1994e38e3e2cf16c0e138bd58afa786df965"

  url "https://github.com/icsharpcode/AvaloniaILSpy/releases/download/#{version}/ILSpy-osx-x64-Release.zip"
  name "ILSpy"
  desc "Avalonia-based .NET decompiler"
  homepage "https://github.com/icsharpcode/AvaloniaILSpy"

  app "ILSpy.app"
end
