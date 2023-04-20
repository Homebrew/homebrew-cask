cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.6"
  sha256 arm:   "ccf3e75ae7798d91add4fd2f7fb5d8dfd01b413ecdc22982ea50584d5dfe362c",
         intel: "64d9c4f9690c73d0dc258f53034d7f0a350352e8b27a04ed14284e5b1fea1749"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"
end
