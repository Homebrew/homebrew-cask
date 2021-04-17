cask "ilspy" do
  version "v5.0-rc2"
  sha256 "219a657bb617603b35386500d2dc1994e38e3e2cf16c0e138bd58afa786df965"

  url "https://github.com/icsharpcode/AvaloniaILSpy/releases/download/#{version}/ILSpy-osx-x64-Release.zip"
  name "ILSpy"
  desc "Cross-platform version of  built with Avalonia"
  homepage "https://github.com/icsharpcode/AvaloniaILSpy"

  livecheck do
    skip
  end

  depends_on arch: :intel

  app "ILSpy.app"
end
