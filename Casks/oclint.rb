cask "oclint" do
  version "21.03"
  sha256 "71a85ba48d11df60ecb9298d90871507d0bdd883e9414ff88d1fb2c2a75d2a14"

  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-11.1.0-x86_64-darwin-macos-big-sur-11.2-xcode-12.4.tar.gz",
      verified: "github.com/oclint/oclint/"
  name "OCLint"
  desc "Static source code analysis tool"
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
