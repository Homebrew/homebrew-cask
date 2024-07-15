class OrcaSheets < Formula
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  if Hardware::CPU.intel?
    url "https://github.com/yourusername/yourapp/releases/download/v1.0.0/orcasheets-intel.tar.gz"
    sha256 "your_intel_sha256_checksum"
  elsif Hardware::CPU.arm?
    url "https://github.com/dataorchestration/orcasheets/releases/download/v0.0.1/orcasheets-arm.tar.gz"
    sha256 "dd09cf8dba178ab4445174f2290baf05a5920afbfe2a19ff538c8cc1e05373a6"
  end

  version "0.0.1"

  def install
    libexec.install "OrcaSheets.app"
    bin.write_exec_script "#{libexec}/OrcaSheets.app/Contents/MacOS/orcasheets"
  end

  def caveats
    <<~EOS
      OrcaSheets.app was installed to:
        #{opt_libexec}/OrcaSheets.app

      You can run it using the command:
        orcasheets
    EOS
  end

  test do
    system "false"
  end
end
