cask "malimite" do
  version "1.1"
  sha256 "a74fd75844aedec13b523da6f8faaf9ec0c2a37027c4e372f74294ea07069528"

  url "https://github.com/LaurieWired/Malimite/releases/download/#{version}/Malimite-1-1.zip"
  name "Malimite"
  desc "Decompiler for Apple applications"
  homepage "https://github.com/LaurieWired/Malimite"

  depends_on formula: "java"

  postflight do
    libexec = "#{HOMEBREW_PREFIX}/libexec/malimite"
    bin = "#{HOMEBREW_PREFIX}/bin/malimite"

    FileUtils.mkdir_p libexec
    FileUtils.mv Dir["#{staged_path}/*"], libexec

    File.write(bin, <<~EOS)
      #!/bin/bash
      exec java -jar "#{libexec}/Malimite-1-1.jar" "$@"
    EOS
    FileUtils.chmod("+x", bin)
  end

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/bin/malimite",
    "#{HOMEBREW_PREFIX}/libexec/malimite",
  ]

  zap trash: [
    "~/Library/Application Support/Malimite",
    "~/Library/Caches/Malimite",
    "~/Library/Logs/Malimite",
    "~/Library/Preferences/com.lauriewired.malimite.plist",
    "~/Library/Saved Application State/com.lauriewired.malimite.savedState",
  ]

  caveats <<~EOS
    Ghidra is a recommended dependency for Malimite. You can install it via:
      brew install --cask ghidra
  EOS
end
