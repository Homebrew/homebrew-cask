cask "kotlin-native" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.22"
  sha256 arm:   "4ffcd76c77cc824eff8addd5e2a73da4f3bbd3584fa9ef282b3f669c45426b1e",
         intel: "153fa411fa8c993ce2635e2504e9b102cb05362cc794b66ef9def26a78b427b5"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{arch}-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/generate-platform"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/klib"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/kotlinc"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
