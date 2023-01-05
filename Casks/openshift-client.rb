cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.22"
  sha256 arm:   "e251f914fa02c1e1ab2803e7de12962c2b26c6547383f3bf8761ffa75434f26d",
         intel: "57cdbdbbf55e17d5c2019302131bb0bae17635736ce29059a296d962c9e6c77f"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
