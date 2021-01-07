cask "oclint" do
  version "20.11"
  sha256 "c5167061ff162b791b73754963e3c2f9c545fe3e66b111cc842392cf0c987caf"

  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-11.0.0-x86_64-darwin-macos-big-sur-11.0.1-xcode-12.2.tar.gz",
      verified: "github.com/oclint/oclint/"
  name "OCLint"
  homepage "https://oclint.org/"

  livecheck do
    url :url
    strategy :git
  end

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"
  binary "oclint-#{version.before_comma}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version.before_comma}/include/c++/v1", target: "#{HOMEBREW_PREFIX}/include/c++/v1"
end
