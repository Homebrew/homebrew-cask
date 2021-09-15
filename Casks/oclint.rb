cask "oclint" do
  version "21.05"
  sha256 "b8279289756b425b0ac8b2a7bfa63b069ad4593fd647f0722e3a861bbf39cf12"

  url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-12.0.0-x86_64-darwin-macos-big-sur-11.4-xcode-12.5.tar.gz",
      verified: "github.com/oclint/oclint/"
  name "OCLint"
  desc "Static source code analysis tool"
  homepage "https://oclint.org/"

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"
  binary "oclint-#{version.before_comma}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version.before_comma}/include/c++/v1", target: "#{HOMEBREW_PREFIX}/include/c++/v1"
end
