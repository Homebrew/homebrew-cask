cask "ghidra" do
  version "11.0.1,20240130"
  sha256 "a0bc9450aa3a231096b13a823c66311b9f84cb9cec4624393221cfed40ef6924"

  url "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_#{version.csv.first}_build/ghidra_#{version.csv.first}_PUBLIC_#{version.csv.second}.zip",
      verified: "github.com/NationalSecurityAgency/ghidra/"
  name "Ghidra"
  desc "Software reverse engineering (SRE) suite of tools"
  homepage "https://www.ghidra-sre.org/"

  livecheck do
    url :url
    regex(/^ghidra[._-]v?(\d+(?:\.\d+)+)[._-]PUBLIC[._-](\d+)\.zip$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  binary "#{caskroom_path}/#{version.csv.first}-#{version.csv.second}/ghidra_#{version.csv.first}_PUBLIC/ghidraRun"

  preflight do
    # Log4j misinterprets comma in staged_path as alternative delimiter
    FileUtils.mv(staged_path, "#{caskroom_path}/#{version.csv.first}-#{version.csv.second}")
  end

  postflight do
    # The decompiler binaries need the quarantine flag taken off before Ghidra can use them
    system("xattr -d com.apple.quarantine '#{caskroom_path}/#{version.csv.first}-#{version.csv.second}/ghidra_#{version.csv.first}_PUBLIC/Ghidra/Features/Decompiler/os/mac_arm_64/decompile'")
    system("xattr -d com.apple.quarantine '#{caskroom_path}/#{version.csv.first}-#{version.csv.second}/ghidra_#{version.csv.first}_PUBLIC/Ghidra/Features/Decompiler/os/mac_arm_64/sleigh'")
    system("xattr -d com.apple.quarantine '#{caskroom_path}/#{version.csv.first}-#{version.csv.second}/ghidra_#{version.csv.first}_PUBLIC/Ghidra/Features/Decompiler/os/mac_x86_64/decompile'")
    system("xattr -d com.apple.quarantine '#{caskroom_path}/#{version.csv.first}-#{version.csv.second}/ghidra_#{version.csv.first}_PUBLIC/Ghidra/Features/Decompiler/os/mac_x86_64/sleigh'")
  end

  uninstall_preflight do
    FileUtils.mv("#{caskroom_path}/#{version.csv.first}-#{version.csv.second}", staged_path)
  end

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "17+"
  end
end
