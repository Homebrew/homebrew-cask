cask "kotlin-native" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.21"
  sha256 arm:   "8df16175b962bc4264a5c3b32cb042d91458babbd093c0f36194dc4645f5fe2e",
         intel: "fc6b5979ec322be803bfac549661aaf0f8f7342aa3bd09008d471fff2757bbdf"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{arch}-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/generate-platform"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/jsinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/klib"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konan-lldb"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konanc"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/kotlinc-native"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/run_konan"

  # No zap stanza required
  caveats do
    depends_on_java "6+"
  end
end
