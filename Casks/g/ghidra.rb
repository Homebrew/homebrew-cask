cask "ghidra" do
  version "11.4.1,20250731"
  sha256 "59b657c39c2113d65e591c1087b77d85f6f7a11e97f2f4a0c9e7188510d07ea0"

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

  new_staged_path = "#{caskroom_path}/#{version.csv.first}-#{version.csv.second}"

  binary "#{new_staged_path}/ghidra_#{version.csv.first}_PUBLIC/ghidraRun"

  preflight do
    # Log4j misinterprets comma in staged_path as alternative delimiter
    FileUtils.mv(staged_path, new_staged_path)
  end

  uninstall_preflight do
    FileUtils.mv(new_staged_path, staged_path) if File.exist? new_staged_path
  end

  zap trash: "~/.ghidra"

  caveats do
    depends_on_java "17+"
    requires_rosetta
  end
end
