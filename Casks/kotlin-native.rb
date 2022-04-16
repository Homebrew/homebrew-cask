cask "kotlin-native" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.6.20"

  if Hardware::CPU.intel?
    sha256 "720113d738e4d78fe8dc41ffd6dee37c27d71f07237c000d286fb2c6941c70c7"
  else
    sha256 "35bff952b36720e248fb93dd5d7e057e152f08286b7d44e48da312ee737f7868"
  end

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
