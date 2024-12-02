cask "oclint" do
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "85062776d437bfa496df542077e6a87f88dfd7435cdbe651a01b17ed8f9df972",
         intel: "6f102a568af3a4344f9658b5f4bdf3d599a851456287bf7a1fae447891f7368c"

  on_arm do
    version "24.11"

    url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-16.0.5-#{arch}-darwin-macos-15.1.1-xcode-16.1.tar.gz"
  end
  on_intel do
    version "22.02"

    url "https://github.com/oclint/oclint/releases/download/v#{version}/oclint-#{version}-llvm-13.0.1-#{arch}-darwin-macos-12.2-xcode-13.2.tar.gz"

    livecheck do
      skip "Legacy version"
    end

    binary "oclint-#{version}/include/c++/v1", target: "#{HOMEBREW_PREFIX}/include/c++/v1"
  end

  name "OCLint"
  desc "Static source code analysis tool"
  homepage "https://github.com/oclint/oclint/"

  binary "oclint-#{version}/bin/oclint-json-compilation-database"
  binary "oclint-#{version}/bin/oclint-xcodebuild"
  binary "oclint-#{version}/bin/oclint"
  binary "oclint-#{version}/lib/clang", target: "#{HOMEBREW_PREFIX}/lib/clang"
  binary "oclint-#{version}/lib/oclint", target: "#{HOMEBREW_PREFIX}/lib/oclint"

  # No zap stanza required
end
