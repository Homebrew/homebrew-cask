cask "kdoctor" do
  version "0.0.2"
  sha256 "38fe1bd536e1709bd071767b7df84261ce2208b7d7071903b170c9b047c256a1"

  url "https://github.com/Kotlin/kdoctor/releases/download/v#{version}/kdoctor_#{version}.zip"
  name "KDoctor"
  desc "Environment diagnostics for Kotlin Multiplatform Mobile app development"
  homepage "https://github.com/kotlin/kdoctor"

  binary "kdoctor"
end
